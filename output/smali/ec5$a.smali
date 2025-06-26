.class public Lec5$a;
.super Ls85;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lec5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lec5;


# direct methods
.method public constructor <init>(Lec5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lec5$a;->e:Lec5;

    invoke-direct {p0}, Ls85;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lec5$a;->e:Lec5;

    iget-object p2, p1, Lbc5;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Lec5;->e(Lec5;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void
.end method
