.class public abstract Lrs2;
.super Lqs2;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqs2;-><init>()V

    .line 2
    iput-object p1, p0, Lrs2;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lrs2;->a:Ljava/lang/String;

    return-object v0
.end method
