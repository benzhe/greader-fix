.class public Ln85;
.super Lu1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll85;Ll1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lu1;-><init>(Landroid/content/Context;Lj1;Ll1;)V

    return-void
.end method


# virtual methods
.method public q(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lj1;->q(Z)V

    .line 2
    iget-object v0, p0, Lu1;->z:Lj1;

    .line 3
    invoke-virtual {v0, p1}, Lj1;->q(Z)V

    return-void
.end method
