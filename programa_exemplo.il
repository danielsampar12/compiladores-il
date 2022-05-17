.assembly extern mscorlib {}
.assembly _codigo{}
.module _codigo.exe

.class public _codigo{
  .method static public void _principal(){
   .entrypoint
   
   //
   .locals (float64 width, float64 height, float64 area)
   call string [mscorlib]System.Console::ReadLine()
   call int64  [mscorlib]System.Int64::Parse(string)
   conv.r8
   stloc width 
   
   call string [mscorlib]System.Console::ReadLine()
   call int64  [mscorlib]System.Int64::Parse(string)   
   conv.r8
   stloc height
  
   ldloc width
   ldloc height
   mul
   stloc area
   
   ldloc area
   call void  [mscorlib]System.Console::Write(float64)
   //

   ret
  }
}
