.class public final Lej7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lej7$b;,
        Lej7$h;,
        Lej7$f;,
        Lej7$c;,
        Lej7$e;,
        Lej7$d;,
        Lej7$a;,
        Lej7$g;
    }
.end annotation


# static fields
.field public static final a:Lzb7;

.field public static final b:Lzb7;

.field public static final c:Lzb7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lej7$h;

    invoke-direct {v0}, Lej7$h;-><init>()V

    .line 2
    invoke-static {v0}, Ln56;->q(Ljava/util/concurrent/Callable;)Lzb7;

    .line 3
    new-instance v0, Lej7$b;

    invoke-direct {v0}, Lej7$b;-><init>()V

    .line 4
    invoke-static {v0}, Ln56;->q(Ljava/util/concurrent/Callable;)Lzb7;

    move-result-object v0

    .line 5
    sput-object v0, Lej7;->a:Lzb7;

    .line 6
    new-instance v0, Lej7$c;

    invoke-direct {v0}, Lej7$c;-><init>()V

    .line 7
    invoke-static {v0}, Ln56;->q(Ljava/util/concurrent/Callable;)Lzb7;

    move-result-object v0

    .line 8
    sput-object v0, Lej7;->b:Lzb7;

    .line 9
    sget-object v0, Lei7;->a:Lei7;

    sget-object v0, Lei7;->a:Lei7;

    .line 10
    new-instance v0, Lej7$f;

    invoke-direct {v0}, Lej7$f;-><init>()V

    .line 11
    invoke-static {v0}, Ln56;->q(Ljava/util/concurrent/Callable;)Lzb7;

    move-result-object v0

    .line 12
    sput-object v0, Lej7;->c:Lzb7;

    return-void
.end method
