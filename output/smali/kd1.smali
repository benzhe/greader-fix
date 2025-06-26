.class public final synthetic Lkd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkd1;->a:Ljava/lang/String;

    iput-object p2, p0, Lkd1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkd1;->a:Ljava/lang/String;

    iget-object v1, p0, Lkd1;->b:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/doubleclick/AppEventListener;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
