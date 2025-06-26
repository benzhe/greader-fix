.class public Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c$a;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;

    iput p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/widget/CheckBox;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c$a;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;

    .line 3
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;->e:Ljava/util/List;

    .line 4
    iget v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c$a;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky6;

    .line 5
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iput-boolean p1, v0, Lky6;->e:Z

    return-void
.end method
