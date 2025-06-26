.class public Ln2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Ln2;


# direct methods
.method public constructor <init>(Ln2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln2$b;->e:Ln2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln2$b;->e:Ln2;

    const/4 v1, 0x0

    iput-object v1, v0, Ln2;->q:Ln2$b;

    .line 2
    invoke-virtual {v0}, Ln2;->drawableStateChanged()V

    return-void
.end method
