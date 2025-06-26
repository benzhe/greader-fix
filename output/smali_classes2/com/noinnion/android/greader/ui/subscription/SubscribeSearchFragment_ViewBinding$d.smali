.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding$d;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding$d;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding$d;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
