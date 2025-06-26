.class public final synthetic Lpj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lei2;


# static fields
.field public static final a:Lei2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpj2;

    invoke-direct {v0}, Lpj2;-><init>()V

    sput-object v0, Lpj2;->a:Lei2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/ads/reward/AdMetadataListener;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/reward/AdMetadataListener;->onAdMetadataChanged()V

    return-void
.end method
