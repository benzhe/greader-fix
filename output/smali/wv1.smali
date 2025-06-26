.class public final Lwv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Lhl2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Luv1;


# direct methods
.method public constructor <init>(Luv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwv1;->a:Luv1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lhl2;

    .line 2
    iget-object v0, p0, Lwv1;->a:Luv1;

    .line 3
    iget-object v0, v0, Luv1;->c:Lnc1;

    .line 4
    new-instance v1, Lpc1;

    invoke-direct {v1, p1}, Lpc1;-><init>(Lhl2;)V

    invoke-virtual {v0, v1}, Lxd1;->D0(Lzd1;)V

    return-void
.end method
