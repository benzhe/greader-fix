.class public final Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;-><init>(Landroid/os/Parcel;Ljm6;)V

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;

    return-object p1
.end method
