.class public Lpb5$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpb5$d;->a(Lcom/google/android/material/textfield/TextInputLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/widget/EditText;

.field public final synthetic f:Lpb5$d;


# direct methods
.method public constructor <init>(Lpb5$d;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpb5$d$a;->f:Lpb5$d;

    iput-object p2, p0, Lpb5$d$a;->e:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpb5$d$a;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lpb5$d$a;->f:Lpb5$d;

    iget-object v1, v1, Lpb5$d;->a:Lpb5;

    .line 2
    iget-object v1, v1, Lpb5;->d:Landroid/text/TextWatcher;

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
