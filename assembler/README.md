## Buildling the AS9 Assembler

_Prerequisites_

* Install `srecord` using `apt`. Tested to work in debian11.

_Process_

* Run the makefile by navigating to the assembler directory and typing `make`. The output will be an executable you can leave in this folder or place it somewhere else.
* Edit /home/<user>/.bashrc to include the path where `as9` is located.
* You are now ready to build s19 files for the Motorola 6809 [here](../core/README.md).

### Changes to as9 when porting to Linux.

This assembler is very well documented, because the Motorola documentation for the 68h11 assembler still applies [here](../doc/as11v2.pdf). See also the changes made by Mike Pashea (in particular a list file instead of stdout.) His and mine changes are on top of the Motorola documentation.

Some bugs removed, in particular pointing to non-existing memory.

I added a warning option `w` that is default on. The warning is about possible ill-formed comment. A `*` is an operator, so it is from now on only accepted at the start of a line. It serves as current program counter too. Other comment must now start with a comment symbol `;`. This is incompatible with old Motorola Listings such as `assist09.asm`. Therefore this is a warning only, and can be disabled by the `now` option.

NOTE: an expression that serves as an operand _cannot_ contain white space e.g. `bar - foo` is interpreted as `bar` with `- foo` as comment. The `w` option being default of is intended to save you from this problem.

All errors are flagged with `ERROR` such that you can find them in a long listing.

If an error relates to data, such as an undefined symbol, that data is printed.

File names can now be a comfortable 256 chars but still no check. (Was 9+dot+3, i.e. MSDOS file in working directory!).  Labels can now be 80 chars, was 16. Lines can now be 256.

The attempt at case insensitive comparison was replaced by a call to `strncasecmp()`. Other calls to `tolower()` `strchr()` where introduced were appropriate.

#### Bugs

The `w` (warning) option sometimes gives spurious warnings, especially after a `D` operand. They must be ignored. Getting this right would require more of a cleanup.

Sometimes an infinity of data was allocated on 32-bit machines (gigabytes), in programs that are incorrect anyway. This used to crash the assembler. It is not totally sure that the cleanups have removed this problem. If the assembler crashes you are advised to look for places where you allocate space with a length unknown in the first pass.

This source is an example of bad style: early c-programming done by BASIC and assembler programmers. 

Such is the `int Oflag` in header files, global variables hidden in unexpected places, prototypes within function bodies, no output to stderr, non-idiomatic variable names, idiosyncratic option specification, etc.
