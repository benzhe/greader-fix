.class public abstract Lpk4$c;
.super Lpk4;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpk4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lpk4$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lpk4$d<",
        "TMessageType;TBuilderType;>;>",
        "Lpk4<",
        "TMessageType;TBuilderType;>;",
        "Lbm4;"
    }
.end annotation


# instance fields
.field public zzc:Lkk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkk4<",
            "Lpk4$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lpk4;-><init>()V

    .line 2
    sget-object v0, Lkk4;->d:Lkk4;

    .line 3
    iput-object v0, p0, Lpk4$c;->zzc:Lkk4;

    return-void
.end method
