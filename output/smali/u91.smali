.class public final Lu91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Ln91$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ln91;


# direct methods
.method public constructor <init>(Ln91;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu91;->a:Ln91;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lu91;->a:Ln91;

    .line 2
    new-instance v1, Ln91$a;

    invoke-direct {v1}, Ln91$a;-><init>()V

    iget-object v2, v0, Ln91;->a:Landroid/content/Context;

    .line 3
    iput-object v2, v1, Ln91$a;->a:Landroid/content/Context;

    .line 4
    iget-object v2, v0, Ln91;->b:Lll2;

    .line 5
    iput-object v2, v1, Ln91$a;->b:Lll2;

    .line 6
    iget-object v2, v0, Ln91;->d:Ljava/lang/String;

    .line 7
    iput-object v2, v1, Ln91$a;->d:Ljava/lang/String;

    .line 8
    iget-object v0, v0, Ln91;->c:Landroid/os/Bundle;

    .line 9
    iput-object v0, v1, Ln91$a;->c:Landroid/os/Bundle;

    return-object v1
.end method
