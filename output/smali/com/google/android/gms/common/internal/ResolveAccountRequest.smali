.class public Lcom/google/android/gms/common/internal/ResolveAccountRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/ResolveAccountRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:Landroid/accounts/Account;

.field public final g:I

.field public final h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le10;

    invoke-direct {v0}, Le10;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->e:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->f:Landroid/accounts/Account;

    .line 4
    iput p3, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->g:I

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->e:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->f:Landroid/accounts/Account;

    .line 9
    iput p2, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->g:I

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget v2, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->e:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->f:Landroid/accounts/Account;

    const/4 v4, 0x0

    .line 6
    invoke-static {p1, v1, v2, p2, v4}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    .line 7
    iget v2, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->g:I

    .line 8
    invoke-static {p1, v1, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 11
    invoke-static {p1, v3, v1, p2, v4}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 12
    invoke-static {p1, v0}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
