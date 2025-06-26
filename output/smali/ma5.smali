.class public final Lma5;
.super Lja5;
.source "SourceFile"


# instance fields
.field public final a:Lja5;

.field public final b:F


# direct methods
.method public constructor <init>(Lja5;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lja5;-><init>()V

    .line 2
    iput-object p1, p0, Lma5;->a:Lja5;

    .line 3
    iput p2, p0, Lma5;->b:F

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lma5;->a:Lja5;

    invoke-virtual {v0}, Lja5;->b()Z

    move-result v0

    return v0
.end method

.method public c(FFFLsa5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lma5;->a:Lja5;

    iget v1, p0, Lma5;->b:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lja5;->c(FFFLsa5;)V

    return-void
.end method
