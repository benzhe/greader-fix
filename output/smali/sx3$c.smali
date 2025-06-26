.class public abstract Lsx3$c;
.super Lsx3;
.source "SourceFile"

# interfaces
.implements Lzy3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lsx3$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object<",
        "TMessageType;TBuilderType;>;>",
        "Lsx3<",
        "TMessageType;TBuilderType;>;",
        "Lzy3;"
    }
.end annotation


# instance fields
.field public zzjv:Ljx3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljx3<",
            "Lsx3$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsx3;-><init>()V

    .line 1
    sget-object v0, Ljx3;->d:Ljx3;

    .line 2
    iput-object v0, p0, Lsx3$c;->zzjv:Ljx3;

    return-void
.end method
