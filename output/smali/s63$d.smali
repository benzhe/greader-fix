.class public abstract Ls63$d;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls63;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Ls63$d<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Ls63<",
        "TMessageType;TBuilderType;>;",
        "Lf83;"
    }
.end annotation


# instance fields
.field public zzitu:Lk63;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk63<",
            "Ls63$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    .line 2
    sget-object v0, Lk63;->d:Lk63;

    .line 3
    iput-object v0, p0, Ls63$d;->zzitu:Lk63;

    return-void
.end method


# virtual methods
.method public final x()Lk63;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk63<",
            "Ls63$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls63$d;->zzitu:Lk63;

    .line 2
    iget-boolean v1, v0, Lk63;->b:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lk63;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk63;

    iput-object v0, p0, Ls63$d;->zzitu:Lk63;

    .line 4
    :cond_0
    iget-object v0, p0, Ls63$d;->zzitu:Lk63;

    return-object v0
.end method
