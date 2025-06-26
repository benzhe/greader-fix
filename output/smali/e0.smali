.class public Le0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea;


# instance fields
.field public final synthetic a:Ld0;


# direct methods
.method public constructor <init>(Ld0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le0;->a:Ld0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lqa;)Lqa;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lqa;->e()I

    move-result v0

    .line 2
    iget-object v1, p0, Le0;->a:Ld0;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Ld0;->Y(Lqa;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Lqa;->c()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Lqa;->d()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Lqa;->b()I

    move-result v3

    .line 6
    invoke-virtual {p2, v0, v1, v2, v3}, Lqa;->i(IIII)Lqa;

    move-result-object p2

    .line 7
    :cond_0
    invoke-static {p1, p2}, Lha;->n(Landroid/view/View;Lqa;)Lqa;

    move-result-object p1

    return-object p1
.end method
