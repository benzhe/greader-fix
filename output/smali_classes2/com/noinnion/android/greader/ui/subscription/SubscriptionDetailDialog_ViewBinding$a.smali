.class public Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding$a;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding$a;->e:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding$a;->e:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    .line 2
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->t:Lan6;

    iget-object v1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->q:Lcom/noinnion/android/reader/common/subscription/Feed;

    const-string v2, "EVENT_SUBSCRIBE"

    invoke-virtual {v0, v2, v1}, Lan6;->b(Ljava/lang/String;Ljava/lang/Object;)I

    .line 3
    invoke-virtual {p1}, Li0;->dismiss()V

    return-void
.end method
