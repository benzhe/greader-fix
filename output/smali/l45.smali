.class public final Ll45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb45;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb45<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc55;


# direct methods
.method public constructor <init>(Lc55;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll45;->a:Lc55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Ll45;->a:Lc55;

    .line 3
    iget-object p1, p1, Lc55;->a:Lf45;

    .line 4
    iget-object p1, p1, Lf45;->a:Le55;

    .line 5
    invoke-virtual {p1}, Le55;->t()Z

    return-void
.end method
