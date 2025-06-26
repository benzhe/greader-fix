.class public Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/reader/common/subscription/BundleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subscription"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public isFeatured:Z

.field public title:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;->isFeatured:Z

    return-void
.end method
