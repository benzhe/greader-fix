.class public final Lsj6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsj6$b;
    }
.end annotation


# static fields
.field public static final b:Lzj6;


# instance fields
.field public final a:Lzj6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsj6$a;

    invoke-direct {v0}, Lsj6$a;-><init>()V

    sput-object v0, Lsj6;->b:Lzj6;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v0, Lsj6$b;

    const/4 v1, 0x2

    new-array v1, v1, [Lzj6;

    .line 2
    sget-object v2, Lfj6;->a:Lfj6;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzj6;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object v2, Lsj6;->b:Lzj6;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 6
    invoke-direct {v0, v1}, Lsj6$b;-><init>([Lzj6;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v1, Ljj6;->a:Ljava/nio/charset/Charset;

    .line 9
    iput-object v0, p0, Lsj6;->a:Lzj6;

    return-void
.end method
