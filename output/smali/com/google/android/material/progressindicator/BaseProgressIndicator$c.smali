.class public Lcom/google/android/material/progressindicator/BaseProgressIndicator$c;
.super Loi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/BaseProgressIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/progressindicator/BaseProgressIndicator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$c;->a:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    invoke-direct {p0}, Loi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$c;->a:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$c;->a:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    invoke-virtual {p1, v0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$c;->a:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .line 4
    iget v0, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->f:I

    .line 5
    iget-boolean v1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->g:Z

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V

    return-void
.end method
