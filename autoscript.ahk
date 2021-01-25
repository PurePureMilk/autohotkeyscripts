F5::ExitApp 
^j::
{
Send, tab begin nxt line:{Enter}{Tab}Chippy Chipmunk
return
}

; test 1 lengthcheck.c, q
{
^q::
Send, Chippy Chipmunk{Enter}
return
}

; test 2 lengthcheck.c, w
{
^w::
Send, You can catch koalas in Australia.{Enter}
Send, You can see a quokka in Australia.{Enter}
Send, Many platypuses swim in Australia.{Enter}
Send, Chipmunks live in Australia, too**{Enter}
Send, But no elephants live there, ever.{Enter}
return
}

; test 3 lengthcheck.c, e
{
^e::
Send, /* Writing good descriptive comments is very important. */{Enter}{Enter}

Send, /* This is not only because comments are a significant part of your score. */{Enter}{Enter}

Send, /* It is also because writing good descriptive comments help you understand{Enter}
Send, {Space}{Space}{Space}
Send,    you own program much better, and often the process of writing comments{Enter}
Send, {Space}{Space}{Space}
Send,    to describe what your code is doing makes you realize that you need to{Enter}
Send, {Space}{Space}{Space}
Send,    fix or change something in it. */{Enter}{Enter}
Send, /* So write more comments today* */{Enter}
return
}

; test 4 lengthcheck.c, r
{
^r::
SendRaw, #include <stdio.h>
Send, {Enter}
SendRaw, int main(void) { printf("Believe it or not, this is a working C program.\n"); return 0; }
Send, {Enter}
return
}

;test 5 lengthcheck.c, t
{
^t::
SendRaw, #include <stdio.h>
Send, {Enter}{Enter}

SendRaw, int main() {
Send, {Enter}{Space}{Space}
SendRaw,   /* here I am declaring a variable that is named x, which stores one single integer value */
Send, {Enter}{Space}{Space}
SendRaw,   int x= 1;
Send, {Enter}{Enter}{Space}{Space}

SendRaw,   /* now I am adding 1 to the value of x */
Send, {Enter}{Space}{Space}
SendRaw,   x++;
Send, {Enter}{Enter}{Space}{Space}

SendRaw,   printf("x is now `%d.\n", x);
Send, {Enter}{Enter}{Space}{Space}

SendRaw,   /* this very complicated statement is causing the value of x to be equal to its current value multiplied by 3 */
Send, {Enter}{Space}{Space}
SendRaw,   /* (I do not recommend that beginners use such advanced language features) */
Send, {Enter}{Space}{Space}
SendRaw,   x *= 3;
Send, {Enter}{Enter}{Space}{Space}

SendRaw,   printf("And now x is `%d.\n", x);
Send, {Enter}{Enter}{Space}{Space}

SendRaw,   /* the program is finishing- bye now! */
Send, {Enter}{Space}{Space}
SendRaw,   return 0;
Send, {Enter}
SendRaw, }
Send, {Enter}
return
}

; test 6 expand.c, y
{
;expand on Chippy, 8 spaces for tab instead of less spaces
^y::
Send, There is a tab at the beginning of the next line:{Enter}
Send, {Tab}Chippy Chipmunk{Enter}
return
}

; test 7 lengthcheck.c, u
{
;line check on Chippy, should be shorter than test 8
^u::
Send, There is a tab at the beginning of the next line:{Enter}
Send, {Tab}Chippy Chipmunk{Enter}
return
}

; test 8 expand.c then lengthcheck.c, i
{
;expand and then line check on Chippy, should be longer than test 7
^i::
Send, There is a tab at the beginning of the next line:{Enter}
Send, {Tab}Chippy Chipmunk{Enter}
return
}

; test 9 lengthcheck.c, o
{
; empty file with two lines
^o::
Send, {Enter}
return
}

; test 10 expand.c, p
{
; empty file with two lines
^p::
Send, {Enter}
return
}








