.class public final Lwo3;
.super Lxs0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxs0<",
        "Lbp3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lto3;


# direct methods
.method public constructor <init>(Lto3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwo3;->f:Lto3;

    invoke-direct {p0}, Lxs0;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lwo3;->f:Lto3;

    invoke-static {v0}, Lto3;->a(Lto3;)V

    .line 2
    iget-object v0, p0, Lxs0;->e:Liw2;

    invoke-virtual {v0, p1}, Lsu2;->cancel(Z)Z

    move-result p1

    return p1
.end method
