.class public final Lhz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo25;


# instance fields
.field public final synthetic a:Lsz4;


# direct methods
.method public constructor <init>(Lsz4;)V
    .locals 0

    iput-object p1, p0, Lhz4;->a:Lsz4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lhz4;->a:Lsz4;

    const-string v0, "auto"

    const-string v1, "_err"

    .line 3
    invoke-virtual {p1, v0, v1, p2}, Lsz4;->A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected call on client side"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
