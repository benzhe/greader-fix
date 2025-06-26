.class public final Lpz;
.super Lhz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lny$d;",
        ">",
        "Lhz;"
    }
.end annotation


# instance fields
.field public final a:Lpy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpy<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpy<",
            "TO;>;)V"
        }
    .end annotation

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    .line 1
    invoke-direct {p0, v0}, Lhz;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lpz;->a:Lpy;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lpz;->a:Lpy;

    .line 2
    iget-object v0, v0, Lpy;->e:Landroid/os/Looper;

    return-object v0
.end method
