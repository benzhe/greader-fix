.class public abstract Landroidx/recyclerview/widget/RecyclerView$a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a0"
.end annotation


# static fields
.field public static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field public static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field public static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field public static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field public static final FLAG_BOUND:I = 0x1

.field public static final FLAG_IGNORE:I = 0x80

.field public static final FLAG_INVALID:I = 0x4

.field public static final FLAG_MOVED:I = 0x800

.field public static final FLAG_NOT_RECYCLABLE:I = 0x10

.field public static final FLAG_REMOVED:I = 0x8

.field public static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field public static final FLAG_TMP_DETACHED:I = 0x100

.field public static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PENDING_ACCESSIBILITY_STATE_NOT_SET:I = -0x1


# instance fields
.field public final itemView:Landroid/view/View;

.field public mFlags:I

.field public mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field public mItemId:J

.field public mItemViewType:I

.field public mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field public mOldPosition:I

.field public mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingAccessibilityState:I

.field public mPosition:I

.field public mPreLayoutPosition:I

.field public mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$t;

.field public mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$a0;

.field public mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$a0;

.field public mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$a0;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPosition:I

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mOldPosition:I

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mItemId:J

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mItemViewType:I

    .line 6
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPreLayoutPosition:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 8
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 9
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPayloads:Ljava/util/List;

    .line 10
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mUnmodifiedPayloads:Ljava/util/List;

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mIsRecyclableCount:I

    .line 12
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 13
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mInChangeScrap:Z

    .line 14
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mWasImportantForAccessibilityBeforeHidden:I

    .line 15
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPendingAccessibilityState:I

    if-eqz p1, :cond_0

    .line 16
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPayloads:Ljava/util/List;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mUnmodifiedPayloads:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public addChangePayload(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->addFlags(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->createPayloadsIfNeeded()V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public addFlags(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    return-void
.end method

.method public clearOldPosition()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mOldPosition:I

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPreLayoutPosition:I

    return-void
.end method

.method public clearPayload()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    return-void
.end method

.method public clearReturnedFromScrapFlag()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    return-void
.end method

.method public clearTmpDetachFlag()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    return-void
.end method

.method public doesTransientStatePreventRecycling()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 2
    sget-object v1, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public flagRemovedAndOffsetPosition(IIZ)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->addFlags(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$a0;->offsetPosition(IZ)V

    .line 3
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPosition:I

    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->H(Landroidx/recyclerview/widget/RecyclerView$a0;)I

    move-result v0

    return v0
.end method

.method public final getItemId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPosition:I

    :cond_0
    return v0
.end method

.method public final getOldPosition()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mOldPosition:I

    return v0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPosition:I

    :cond_0
    return v0
.end method

.method public getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mUnmodifiedPayloads:Ljava/util/List;

    return-object v0

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$a0;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0

    .line 5
    :cond_2
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$a0;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0
.end method

.method public hasAnyOfTheFlags(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAdapterPositionUnknown()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAttachedToTransitionOverlay()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBound()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInvalid()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRecyclable()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 2
    sget-object v1, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrap()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTmpDetached()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpdated()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needsUpdate()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offsetPosition(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mOldPosition:I

    .line 3
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPreLayoutPosition:I

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPreLayoutPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPreLayoutPosition:I

    .line 6
    :cond_2
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPosition:I

    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$n;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$n;->c:Z

    :cond_3
    return-void
.end method

.method public onEnteredHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPendingAccessibilityState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mWasImportantForAccessibilityBeforeHidden:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 4
    sget-object v1, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    .line 6
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mWasImportantForAccessibilityBeforeHidden:I

    :goto_0
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->j0(Landroidx/recyclerview/widget/RecyclerView$a0;I)Z

    return-void
.end method

.method public onLeftHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->j0(Landroidx/recyclerview/widget/RecyclerView$a0;I)Z

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mWasImportantForAccessibilityBeforeHidden:I

    return-void
.end method

.method public resetInternal()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPosition:I

    .line 3
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mOldPosition:I

    const-wide/16 v2, -0x1

    .line 4
    iput-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mItemId:J

    .line 5
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPreLayoutPosition:I

    .line 6
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mIsRecyclableCount:I

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 8
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->clearPayload()V

    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPendingAccessibilityState:I

    .line 12
    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->k(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    return-void
.end method

.method public saveOldPosition()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mOldPosition:I

    :cond_0
    return-void
.end method

.method public setFlags(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mIsRecyclableCount:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mIsRecyclableCount:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mIsRecyclableCount:I

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 4
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 5
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    :cond_3
    :goto_1
    return-void
.end method

.method public setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$t;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 2
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mInChangeScrap:Z

    return-void
.end method

.method public shouldBeKeptAsChild()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldIgnore()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public stopIgnoring()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewHolder"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-static {v0, v2}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mItemId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", oldPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mOldPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pLpos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mPreLayoutPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->isScrap()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " scrap "

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mInChangeScrap:Z

    if-eqz v0, :cond_1

    const-string v0, "[changeScrap]"

    goto :goto_1

    :cond_1
    const-string v0, "[attachedScrap]"

    .line 6
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->isBound()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->needsUpdate()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->isRecyclable()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, " not recyclable("

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mIsRecyclableCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->isAdapterPositionUnknown()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "}"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unScrap()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$t;->k(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    return-void
.end method

.method public wasReturnedFromScrap()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
