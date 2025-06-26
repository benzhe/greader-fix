.class public Landroidx/viewpager2/widget/ViewPager2$j;
.super Lyf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final synthetic e:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$j;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Lyf;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroidx/recyclerview/widget/RecyclerView$m;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$j;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->r:Lcj;

    .line 3
    iget-object v0, v0, Lcj;->a:Lej;

    .line 4
    iget-boolean v0, v0, Lej;->m:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lyf;->c(Landroidx/recyclerview/widget/RecyclerView$m;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method
