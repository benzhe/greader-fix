.class public Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c$b;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;

    iput p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c$b;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c$b;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;

    .line 2
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;->e:Ljava/util/List;

    .line 3
    iget p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c$b;->e:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lky6;

    add-int/lit8 p3, p3, -0x1

    int-to-long p2, p3

    .line 4
    iput-wide p2, p1, Lky6;->a:J

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
