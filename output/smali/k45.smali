.class public final Lk45;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le55;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le55<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le55;

    invoke-direct {v0}, Le55;-><init>()V

    iput-object v0, p0, Lk45;->a:Le55;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk45;->a:Le55;

    invoke-virtual {v0}, Le55;->n()Z

    move-result v0

    return v0
.end method
