.class public final Lhz2;
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
    new-instance v0, Lez2;

    invoke-direct {v0}, Lez2;-><init>()V

    .line 2
    new-instance v0, Ldz2;

    invoke-direct {v0}, Ldz2;-><init>()V

    .line 3
    invoke-static {}, Lz23;->y()Lz23;

    move-result-object v0

    sput-object v0, Lhz2;->a:Lz23;

    .line 4
    invoke-static {}, Lz23;->y()Lz23;

    .line 5
    invoke-static {}, Lz23;->y()Lz23;

    .line 6
    :try_start_0
    invoke-static {}, Lvx2;->a()V

    .line 7
    new-instance v0, Ldz2;

    invoke-direct {v0}, Ldz2;-><init>()V

    new-instance v1, Lez2;

    invoke-direct {v1}, Lez2;-><init>()V

    invoke-static {v0, v1}, Lpx2;->g(Lmx2;Lzw2;)V

    .line 8
    new-instance v0, Ljz2;

    invoke-direct {v0}, Ljz2;-><init>()V

    invoke-static {v0}, Lpx2;->f(Lkx2;)V

    .line 9
    new-instance v0, Lkz2;

    invoke-direct {v0}, Lkz2;-><init>()V

    invoke-static {v0}, Lpx2;->f(Lkx2;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
