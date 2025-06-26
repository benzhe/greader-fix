.class public Lv97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li97;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lh97;
    .locals 2

    const/16 v0, 0x1000

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 v0, 0x100000

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2
    new-instance v0, Lu97;

    new-instance v1, Lxs7;

    invoke-direct {v1}, Lxs7;-><init>()V

    invoke-direct {v0, v1, p1}, Lu97;-><init>(Lxs7;I)V

    return-object v0
.end method
