.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment_ViewBinding$b;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment_ViewBinding;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment_ViewBinding$b;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment_ViewBinding$b;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->vQueryText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
