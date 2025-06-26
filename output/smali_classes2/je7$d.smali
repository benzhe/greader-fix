.class public final Lje7$d;
.super Lje7$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lje7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lje7$g<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lx38;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lje7$g;-><init>(Lx38;)V

    return-void
.end method


# virtual methods
.method public i()V
    .locals 2

    .line 1
    new-instance v0, Llc7;

    const-string v1, "create: could not emit value due to lack of requests"

    invoke-direct {v0, v1}, Llc7;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lje7$a;->h(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Ln56;->z1(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
