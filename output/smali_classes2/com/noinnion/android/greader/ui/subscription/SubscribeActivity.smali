.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;
.super Lcom/noinnion/android/reader/ui/BaseDialogActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$d;,
        Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;
    }
.end annotation


# static fields
.field public static final synthetic D:I


# instance fields
.field public A:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

.field public B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;",
            ">;"
        }
    .end annotation
.end field

.field public C:Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$d;

.field public y:Ljava/lang/String;

.field public z:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f110107

    .line 1
    invoke-static {p0, p1}, Ln56;->y2(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f110104

    .line 2
    invoke-static {p0, p1}, Ln56;->y2(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_2
    const p1, 0x7f110108

    .line 3
    invoke-static {p0, p1}, Ln56;->y2(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_3
    const p1, 0x7f110109

    .line 4
    invoke-static {p0, p1}, Ln56;->y2(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;->g:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    invoke-virtual {p0, p1, v0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->z(Landroid/os/Bundle;Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;)V

    const v0, 0x7f0c00db

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

    const v1, 0x7f11030b

    invoke-virtual {v0, v1}, Lu;->t(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v0

    invoke-virtual {v0, v6}, Lu;->o(Z)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.TEXT"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->y:Ljava/lang/String;

    :cond_1
    const v0, 0x7f090231

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->z:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    .line 12
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->B:Ljava/util/List;

    .line 14
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 15
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->y:Ljava/lang/String;

    const-string v1, "input"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v7, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->B:Ljava/util/List;

    new-instance v8, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;

    const v0, 0x7f11034f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

    const-string v2, "search"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v7, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->B:Ljava/util/List;

    new-instance v8, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;

    const v0, 0x7f110155

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;

    const/4 v5, 0x0

    const-string v2, "podcast"

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v7, "browse_type"

    .line 19
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    iget-object v8, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->B:Ljava/util/List;

    new-instance v9, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;

    const v0, 0x7f110316

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    const-string v2, "browse"

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x2

    .line 22
    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    iget-object v7, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->B:Ljava/util/List;

    new-instance v8, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;

    const v0, 0x7f11031b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    const-string v2, "news"

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$d;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$d;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;Lwb;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->C:Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$d;

    .line 25
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->z:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lxi;)V

    .line 26
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->z:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$a;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$j;)V

    const v0, 0x7f0902b4

    .line 27
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->A:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    const v1, 0x7f0c00ee

    const v2, 0x1020014

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->setCustomTabView(II)V

    .line 29
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->A:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    new-array v2, v6, [I

    const v3, 0x7f060208

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 31
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->A:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    invoke-virtual {v0, v6}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 32
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->A:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->z:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 33
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->A:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$b;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;)V

    invoke-virtual {v0, v1}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->setCustomTabColorizer(Lcom/noinnion/android/reader/widget/SlidingTabLayout$d;)V

    if-eqz p1, :cond_4

    const-string v0, "tab"

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->z:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->C:Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$d;

    .line 36
    iget-object v2, v2, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$d;->f:Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;

    iget-object v2, v2, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;

    .line 37
    iget-object v4, v4, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    .line 38
    :goto_1
    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_4
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

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->B(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->B:Ljava/util/List;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->z:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;->a:Ljava/lang/String;

    const-string v1, "tab"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
