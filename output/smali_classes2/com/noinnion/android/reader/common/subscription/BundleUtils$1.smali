.class public final Lcom/noinnion/android/reader/common/subscription/BundleUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/reader/common/subscription/BundleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/noinnion/android/reader/common/subscription/BundleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/reader/common/subscription/BundleUtils$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/noinnion/android/reader/common/subscription/BundleItem;Lcom/noinnion/android/reader/common/subscription/BundleItem;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/reader/common/subscription/BundleUtils$1;->collator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/noinnion/android/reader/common/subscription/BundleItem;->title:Ljava/lang/String;

    iget-object p2, p2, Lcom/noinnion/android/reader/common/subscription/BundleItem;->title:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/noinnion/android/reader/common/subscription/BundleItem;

    check-cast p2, Lcom/noinnion/android/reader/common/subscription/BundleItem;

    invoke-virtual {p0, p1, p2}, Lcom/noinnion/android/reader/common/subscription/BundleUtils$1;->compare(Lcom/noinnion/android/reader/common/subscription/BundleItem;Lcom/noinnion/android/reader/common/subscription/BundleItem;)I

    move-result p1

    return p1
.end method
