.class public Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/view/viewpager/FixedViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:I

.field public f:Landroid/os/Parcelable;

.field public g:Ljava/lang/ClassLoader;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState$a;

    invoke-direct {v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState$a;-><init>()V

    .line 2
    new-instance v1, Lc9;

    invoke-direct {v1, v0}, Lc9;-><init>(Ld9;)V

    .line 3
    sput-object v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    if-nez p2, :cond_0

    .line 3
    const-class p2, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;->e:I

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;->f:Landroid/os/Parcelable;

    .line 6
    iput-object p2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;->g:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FragmentPager.SavedState{"

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;->e:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Ljo;->q(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;->f:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
