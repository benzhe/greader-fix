.class public Lnm6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnm6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lnm6;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/miguelcatalan/materialsearchview/R$id;->suggestion_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnm6$b;->a:Landroid/widget/TextView;

    .line 3
    iget-object v0, p1, Lnm6;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 4
    sget v0, Lcom/miguelcatalan/materialsearchview/R$id;->suggestion_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lnm6$b;->b:Landroid/widget/ImageView;

    .line 5
    iget-object p1, p1, Lnm6;->g:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
