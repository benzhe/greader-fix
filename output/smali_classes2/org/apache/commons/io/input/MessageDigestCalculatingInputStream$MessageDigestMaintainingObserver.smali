.class public Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;
.super Lorg/apache/commons/io/input/ObservableInputStream$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageDigestMaintainingObserver"
.end annotation


# instance fields
.field private final md:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;->md:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public data(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;->md:Ljava/security/MessageDigest;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public data([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
