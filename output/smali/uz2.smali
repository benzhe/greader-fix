.class public final Luz2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz23;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqz2;

    invoke-direct {v0}, Lqz2;-><init>()V

    .line 2
    invoke-static {}, Lz23;->y()Lz23;

    move-result-object v0

    .line 3
    sput-object v0, Luz2;->a:Lz23;

    .line 4
    :try_start_0
    new-instance v0, Lqz2;

    invoke-direct {v0}, Lqz2;-><init>()V

    invoke-static {v0}, Lpx2;->e(Lzw2;)V

    .line 5
    new-instance v0, Lpz2;

    invoke-direct {v0}, Lpz2;-><init>()V

    invoke-static {v0}, Lpx2;->e(Lzw2;)V

    .line 6
    new-instance v0, Lxz2;

    invoke-direct {v0}, Lxz2;-><init>()V

    invoke-static {v0}, Lpx2;->f(Lkx2;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
