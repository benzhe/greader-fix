.class public final Lcom/michaelflisar/gdprdialog/GDPRCustomTexts$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
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
    .locals 1

    .line 1
    new-instance v0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    invoke-direct {v0, p1}, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    return-object p1
.end method
