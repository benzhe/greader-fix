.class public final Lvv5;
.super Lw27;
.source "SourceFile"


# static fields
.field public static final b:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lop5;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Li47;->c:Li47$d;

    const-string v1, "Authorization"

    .line 2
    invoke-static {v1, v0}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v0

    sput-object v0, Lvv5;->b:Li47$f;

    return-void
.end method

.method public constructor <init>(Lop5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw27;-><init>()V

    .line 2
    iput-object p1, p0, Lvv5;->a:Lop5;

    return-void
.end method
