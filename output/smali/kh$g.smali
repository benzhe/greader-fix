.class public Lkh$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkh;->l(Landroid/view/ViewGroup;Lyh;Lyh;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkh$i;

.field private mViewBounds:Lkh$i;


# direct methods
.method public constructor <init>(Lkh;Lkh$i;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lkh$g;->a:Lkh$i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lkh$g;->mViewBounds:Lkh$i;

    return-void
.end method
