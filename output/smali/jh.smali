.class public Ljh;
.super Lwh;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lwh;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lwh;->O(I)Lwh;

    .line 3
    new-instance v1, Llh;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Llh;-><init>(I)V

    invoke-virtual {p0, v1}, Lwh;->K(Lqh;)Lwh;

    new-instance v1, Lkh;

    invoke-direct {v1}, Lkh;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Lwh;->K(Lqh;)Lwh;

    new-instance v1, Llh;

    invoke-direct {v1, v0}, Llh;-><init>(I)V

    .line 5
    invoke-virtual {p0, v1}, Lwh;->K(Lqh;)Lwh;

    return-void
.end method
