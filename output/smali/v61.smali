.class public final Lv61;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhl2;

.field public final b:Lsk2;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhl2;Lsk2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv61;->a:Lhl2;

    .line 3
    iput-object p2, p0, Lv61;->b:Lsk2;

    if-nez p3, :cond_0

    const-string p3, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 4
    :cond_0
    iput-object p3, p0, Lv61;->c:Ljava/lang/String;

    return-void
.end method
