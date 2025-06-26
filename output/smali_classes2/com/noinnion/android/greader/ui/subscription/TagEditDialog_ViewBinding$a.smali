.class public Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$a;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;-><init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$a;->e:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$a;->e:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object v0

    sget-object v1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->e:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    iget-object v2, p1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->g:Ljava/util/List;

    new-instance v3, Lru6;

    invoke-direct {v3, p1}, Lru6;-><init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;)V

    invoke-static {v0, v1, v2, v3}, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->d(Lwb;Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;Ljava/util/List;Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$d;)V

    return-void
.end method
