.class public final Le61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lem3;


# instance fields
.field public final e:Lzp0;


# direct methods
.method public constructor <init>(Lzp0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le61;->e:Lzp0;

    return-void
.end method


# virtual methods
.method public final c0(Lfm3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le61;->e:Lzp0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean p1, p1, Lfm3;->j:Z

    invoke-virtual {v0, p1}, Lzp0;->d(Z)V

    return-void
.end method
