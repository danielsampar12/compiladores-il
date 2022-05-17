.assembly extern mscorlib {}
.assembly _codigo{}
.module _codigo.exe

.class public _codigo{
  .method static public void _principal(){
   .entrypoint
   
   //
   .locals (int64 i, int64 max)
   ldc.i8 1
   stloc i
   ldc.i8 10
   stloc max

   br L1
L1:ldloc i
   call void  [mscorlib]System.Console::Write(int64)

   ldstr " "
   call void  [mscorlib]System.Console::Write(string)

   ldloc i
   ldc.i8 1
   add
   stloc i

   ldloc i
   ldloc max
   cgt
   brfalse L1
   ret


   //

   ret
  }
}

