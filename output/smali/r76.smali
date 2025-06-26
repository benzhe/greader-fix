.class public final Lr76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lo66;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lm76;


# direct methods
.method public constructor <init>(Lm76;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr76;->a:Lm76;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lr76;->a:Lm76;

    .line 2
    new-instance v1, Lo66;

    iget-object v0, v0, Lm76;->a:Lpe5;

    invoke-direct {v1, v0}, Lo66;-><init>(Lpe5;)V

    return-object v1
.end method
