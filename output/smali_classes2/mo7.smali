.class public final Lmo7;
.super Lop7;
.source "SourceFile"


# instance fields
.field public final l:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lop7;-><init>()V

    iput-object p1, p0, Lmo7;->l:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public Q()Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, Lmo7;->l:Ljava/lang/Thread;

    return-object v0
.end method
