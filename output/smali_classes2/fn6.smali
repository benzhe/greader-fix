.class public final Lfn6;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ReaderApp;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ReaderApp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfn6;->e:Lcom/noinnion/android/greader/ReaderApp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfn6;->e:Lcom/noinnion/android/greader/ReaderApp;

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V

    return-void
.end method
