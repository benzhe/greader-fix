.class public Lcom/noinnion/android/greader/service/FeedService$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/service/FeedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/service/FeedService;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/noinnion/android/greader/service/FeedService$c;->a:Ljava/lang/String;

    .line 3
    iput-boolean p3, p0, Lcom/noinnion/android/greader/service/FeedService$c;->b:Z

    return-void
.end method
