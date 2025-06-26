.class public Lzu6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzu6;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/widget/ImageView;

.field public final synthetic f:Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;

.field public final synthetic g:Lzu6;


# direct methods
.method public constructor <init>(Lzu6;Landroid/widget/ImageView;Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzu6$a;->g:Lzu6;

    iput-object p2, p0, Lzu6$a;->e:Landroid/widget/ImageView;

    iput-object p3, p0, Lzu6$a;->f:Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lzu6$a;->e:Landroid/widget/ImageView;

    const v0, 0x7f0800ed

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    new-instance p1, Lcom/noinnion/android/reader/common/subscription/Feed;

    iget-object v0, p0, Lzu6$a;->f:Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;

    iget-object v1, v0, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;->title:Ljava/lang/String;

    iget-object v0, v0, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;->url:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Lcom/noinnion/android/reader/common/subscription/Feed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lzu6$a;->g:Lzu6;

    iget-object v0, v0, Lzu6;->j:Lan6;

    const-string v1, "EVENT_SUBSCRIBE"

    invoke-virtual {v0, v1, p1}, Lan6;->b(Ljava/lang/String;Ljava/lang/Object;)I

    return-void
.end method
