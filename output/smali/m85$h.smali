.class public Lm85$h;
.super Lbg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm85;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic f:Lm85;


# direct methods
.method public constructor <init>(Lm85;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm85$h;->f:Lm85;

    .line 2
    invoke-direct {p0, p2}, Lbg;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Lsa;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lbg;->d(Landroid/view/View;Lsa;)V

    .line 2
    iget-object p1, p0, Lm85$h;->f:Lm85;

    iget-object p1, p1, Lm85;->i:Lm85$c;

    .line 3
    iget-object v0, p1, Lm85$c;->d:Lm85;

    iget-object v0, v0, Lm85;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    .line 4
    :goto_1
    iget-object v3, p1, Lm85$c;->d:Lm85;

    iget-object v3, v3, Lm85;->i:Lm85$c;

    invoke-virtual {v3}, Lm85$c;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 5
    iget-object v3, p1, Lm85$c;->d:Lm85;

    iget-object v3, v3, Lm85;->i:Lm85$c;

    invoke-virtual {v3, v2}, Lm85$c;->getItemViewType(I)I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Lsa$b;

    invoke-static {v0, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    invoke-direct {p1, v0}, Lsa$b;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p2, p1}, Lsa;->s(Ljava/lang/Object;)V

    return-void
.end method
