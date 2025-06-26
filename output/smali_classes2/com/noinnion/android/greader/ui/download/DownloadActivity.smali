.class public Lcom/noinnion/android/greader/ui/download/DownloadActivity;
.super Lcom/noinnion/android/reader/ui/BaseDialogActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;,
        Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;
    }
.end annotation


# static fields
.field public static final synthetic C:I


# instance fields
.field public A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;",
            ">;"
        }
    .end annotation
.end field

.field public B:Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;

.field public y:Landroidx/viewpager/widget/ViewPager;

.field public z:Lcom/noinnion/android/reader/widget/SlidingTabLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->z:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;->g:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    invoke-virtual {p0, p1, v0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->z(Landroid/os/Bundle;Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;)V

    const v0, 0x7f0c0052

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f090322

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->s()Lc0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc0;->x(Landroidx/appcompat/widget/Toolbar;)V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v0

    const v1, 0x7f11018d

    invoke-virtual {v0, v1}, Lu;->t(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v0

    invoke-virtual {v0, v6}, Lu;->o(Z)V

    :cond_0
    const v0, 0x7f090231

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->y:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->A:Ljava/util/List;

    .line 10
    new-instance v8, Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;

    const v0, 0x7f1100c4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lqp6;

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v2, "history"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;-><init>(Lcom/noinnion/android/greader/ui/download/DownloadActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v7, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->A:Ljava/util/List;

    new-instance v8, Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;

    const v0, 0x7f1100c0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lrp6;

    const-string v2, "downloading"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;-><init>(Lcom/noinnion/android/greader/ui/download/DownloadActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;-><init>(Lcom/noinnion/android/greader/ui/download/DownloadActivity;Lwb;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->B:Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;

    .line 13
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->y:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lxi;)V

    .line 14
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->y:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/noinnion/android/greader/ui/download/DownloadActivity$a;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/download/DownloadActivity$a;-><init>(Lcom/noinnion/android/greader/ui/download/DownloadActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$j;)V

    const v0, 0x7f0902b4

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->z:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    const v1, 0x7f0c00ee

    const v2, 0x1020014

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->setCustomTabView(II)V

    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->z:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    new-array v2, v6, [I

    const v3, 0x7f060208

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 19
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->z:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    invoke-virtual {v0, v6}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 20
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->z:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->y:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 21
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->z:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    new-instance v1, Lcom/noinnion/android/greader/ui/download/DownloadActivity$b;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/download/DownloadActivity$b;-><init>(Lcom/noinnion/android/greader/ui/download/DownloadActivity;)V

    invoke-virtual {v0, v1}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->setCustomTabColorizer(Lcom/noinnion/android/reader/widget/SlidingTabLayout$d;)V

    if-eqz p1, :cond_1

    const-string v0, "tab"

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->y:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->B:Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;

    invoke-virtual {v2, v0}, Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;->m(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "startDownloading"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->y:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->B:Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;

    if-eqz v0, :cond_2

    const-string v0, "downloading"

    goto :goto_0

    :cond_2
    const-string v0, "history"

    :goto_0
    invoke-virtual {v2, v0}, Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;->m(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const v0, 0x7f1100e8

    .line 2
    invoke-static {p0, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->A:Ljava/util/List;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->y:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;->a:Ljava/lang/String;

    const-string v1, "tab"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
